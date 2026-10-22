package com.project7.localmanager;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import java.util.List;

/* loaded from: classes.dex */
final class LocalUiStyle {
    static final String DESTRUCTIVE = "ui:destructive";
    static final String PRIMARY = "ui:primary";
    static final int WHITE = -1;
    static final int BACKGROUND = Color.rgb(245, 247, 248);
    static final int INK = Color.rgb(28, 37, 43);
    static final int MUTED = Color.rgb(100, 113, 123);
    static final int ACCENT = Color.rgb(14, 117, 106);
    static final int SOFT_ACCENT = Color.rgb(226, 243, 237);
    static final int BORDER = Color.rgb(223, 229, 233);
    static final int DANGER = Color.rgb(174, 57, 71);

    LocalUiStyle() {
    }

    /* renamed from: dp */
    static int m78dp(View view, int i) {
        return Math.round(i * view.getResources().getDisplayMetrics().density);
    }

    static GradientDrawable surface(int i, int i2, int i3, int i4, View view) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(m78dp(view, i4));
        if (i3 != i) {
            gradientDrawable.setStroke(m78dp(view, 1), i3);
        }
        return gradientDrawable;
    }

    static Drawable ripple(View view, int i, int i2, int i3, int i4) {
        return new RippleDrawable(ColorStateList.valueOf(Color.argb(28, 14, 117, 106)), surface(i, i, i3, i4, view), surface(WHITE, WHITE, WHITE, i4, view));
    }

    static void tree(View view) {
        if (view instanceof EditText) {
            input((EditText) view);
        } else if (view instanceof CheckBox) {
            CheckBox checkBox = (CheckBox) view;
            checkBox.setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{ACCENT, MUTED}));
            checkBox.setTextColor(INK);
            checkBox.setMinHeight(m78dp(view, 52));
            checkBox.setLetterSpacing(0.0f);
        } else if (view instanceof Button) {
            button((Button) view);
        } else if (view instanceof Spinner) {
            Drawable drawable = LocalIcons.drawable(view.getContext(), 15);
            drawable.setTint(MUTED);
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{ripple(view, WHITE, WHITE, BORDER, 14), drawable});
            layerDrawable.setLayerGravity(1, 8388629);
            layerDrawable.setLayerWidth(1, m78dp(view, 16));
            layerDrawable.setLayerHeight(1, m78dp(view, 16));
            layerDrawable.setLayerInset(1, 0, 0, m78dp(view, 14), 0);
            view.setBackground(layerDrawable);
            view.setMinimumHeight(m78dp(view, 54));
            view.setPadding(m78dp(view, 14), m78dp(view, 2), m78dp(view, 12), m78dp(view, 2));
            spacing(view, 10);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                tree(viewGroup.getChildAt(i));
            }
        }
    }

    static void input(EditText editText) {
        editText.setTextColor(INK);
        editText.setHintTextColor(MUTED);
        editText.setTextSize(15.0f);
        editText.setLetterSpacing(0.0f);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_focused}, surface(WHITE, WHITE, ACCENT, 14, editText));
        stateListDrawable.addState(new int[0], surface(WHITE, WHITE, BORDER, 14, editText));
        editText.setBackground(stateListDrawable);
        editText.setPadding(m78dp(editText, 16), m78dp(editText, 14), m78dp(editText, 16), m78dp(editText, 14));
        editText.setMinimumHeight(m78dp(editText, 54));
        editText.setSelectAllOnFocus(false);
        spacing(editText, 10);
    }

    static void button(Button button) {
        int i;
        boolean equals = PRIMARY.equals(button.getTag());
        boolean equals2 = DESTRUCTIVE.equals(button.getTag());
        if (equals) {
            i = WHITE;
        } else {
            i = equals2 ? DANGER : INK;
        }
        button.setAllCaps(false);
        button.setTextSize(14.0f);
        button.setLetterSpacing(0.0f);
        button.setTypeface(Typeface.create("sans-serif-medium", 0));
        button.setTextColor(new ColorStateList(new int[][]{new int[]{-16842910}, new int[0]}, new int[]{Color.rgb(137, 148, 155), i}));
        button.setGravity(17);
        button.setMinHeight(m78dp(button, 52));
        button.setMinimumWidth(0);
        button.setMinWidth(0);
        button.setMaxLines(2);
        button.setPadding(m78dp(button, 14), m78dp(button, 10), m78dp(button, 14), m78dp(button, 10));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, surface(Color.rgb(233, 237, 239), WHITE, Color.rgb(233, 237, 239), 16, button));
        stateListDrawable.addState(new int[0], ripple(button, equals ? ACCENT : WHITE, WHITE, equals ? ACCENT : equals2 ? Color.rgb(238, 211, 215) : BORDER, 16));
        button.setBackground(stateListDrawable);
        for (Drawable drawable : button.getCompoundDrawables()) {
            if (drawable != null) {
                drawable.mutate().setTintList(new ColorStateList(new int[][]{new int[]{-16842910}, new int[0]}, new int[]{MUTED, i}));
                drawable.setBounds(0, 0, m78dp(button, 18), m78dp(button, 18));
            }
        }
        Drawable[] compoundDrawables = button.getCompoundDrawables();
        if (button.getText().length() != 0 || compoundDrawables[1] == null) {
            button.setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
        } else {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{stateListDrawable, compoundDrawables[1]});
            layerDrawable.setLayerGravity(1, 17);
            layerDrawable.setLayerWidth(1, m78dp(button, 22));
            layerDrawable.setLayerHeight(1, m78dp(button, 22));
            button.setBackground(layerDrawable);
            button.setCompoundDrawables(null, null, null, null);
        }
        button.setCompoundDrawablePadding(m78dp(button, 8));
        if (button.getContentDescription() == null) {
            button.setTooltipText(button.getText());
        }
        button.setElevation(0.0f);
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(new int[]{R.attr.state_pressed}, ObjectAnimator.ofFloat(button, "alpha", 0.78f).setDuration(90L));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(button, "alpha", 1.0f).setDuration(140L));
        button.setStateListAnimator(stateListAnimator);
        spacing(button, 8);
    }

    static void action(Button button, String str, int i) {
        button.setTag(str);
        if (i != 0) {
            button.setCompoundDrawablesWithIntrinsicBounds(LocalIcons.drawable(button.getContext(), i), (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    static void iconButton(Button button, String str, int i) {
        button.setText("");
        button.setContentDescription(str);
        button.setTooltipText(str);
        Drawable drawable = LocalIcons.drawable(button.getContext(), i);
        drawable.setTint(INK);
        drawable.setBounds(0, 0, m78dp(button, 22), m78dp(button, 22));
        button.setCompoundDrawables(null, drawable, null, null);
    }

    static void accountLevelButton(Button button, String str) {
        button.setContentDescription(str);
        button.setTooltipText(str);
        button.setText("");
        button(button);
        Drawable drawable = LocalIcons.drawable(button.getContext(), 18);
        drawable.setTint(ACCENT);
        int i = SOFT_ACCENT;
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{ripple(button, i, 0, i, 8), drawable});
        layerDrawable.setLayerGravity(0, 17);
        layerDrawable.setLayerWidth(0, m78dp(button, 40));
        layerDrawable.setLayerHeight(0, m78dp(button, 40));
        layerDrawable.setLayerGravity(1, 17);
        layerDrawable.setLayerWidth(1, m78dp(button, 20));
        layerDrawable.setLayerHeight(1, m78dp(button, 20));
        button.setBackground(layerDrawable);
        button.setPadding(0, 0, 0, 0);
        button.setMinHeight(m78dp(button, 48));
        button.setMinimumHeight(m78dp(button, 48));
    }

    static void spacing(View view, int i) {
        if (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.topMargin = Math.max(marginLayoutParams.topMargin, m78dp(view, 4));
            marginLayoutParams.bottomMargin = Math.max(marginLayoutParams.bottomMargin, m78dp(view, i));
        }
    }

    static void navigation(TextView textView, boolean z) {
        textView.setBackground(ripple(textView, z ? SOFT_ACCENT : WHITE, WHITE, z ? SOFT_ACCENT : WHITE, 16));
        textView.setTextColor(z ? ACCENT : MUTED);
        for (Drawable drawable : textView.getCompoundDrawables()) {
            if (drawable != null) {
                drawable.mutate().setTint(z ? ACCENT : MUTED);
            }
        }
        textView.setTypeface(null, z ? 1 : 0);
        textView.setSelected(z);
    }

    static void enter(View view) {
        view.animate().cancel();
        view.setAlpha(1.0f);
        view.setTranslationY(0.0f);
        if (ValueAnimator.areAnimatorsEnabled()) {
            view.setAlpha(0.0f);
            view.setTranslationY(m78dp(view, 8));
            view.animate().alpha(1.0f).translationY(0.0f).setDuration(220L).setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f)).start();
        }
    }

    static ArrayAdapter<String> options(Context context, List<String> list) {
        return new ArrayAdapter<String>(context, R.layout.simple_spinner_item, list) { // from class: com.project7.localmanager.LocalUiStyle.1
            private View format(View view, boolean z) {
                if (view instanceof TextView) {
                    TextView textView = (TextView) view;
                    textView.setTextColor(LocalUiStyle.INK);
                    textView.setTextSize(14.0f);
                    textView.setSingleLine(false);
                    textView.setMaxLines(3);
                    textView.setLetterSpacing(0.0f);
                    textView.setEllipsize(TextUtils.TruncateAt.END);
                    textView.setPadding(LocalUiStyle.m78dp(textView, z ? 16 : 0), LocalUiStyle.m78dp(textView, 10), LocalUiStyle.m78dp(textView, 32), LocalUiStyle.m78dp(textView, 10));
                    textView.setMinHeight(LocalUiStyle.m78dp(textView, 50));
                    if (z) {
                        textView.setBackgroundColor(LocalUiStyle.WHITE);
                    }
                }
                return view;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                return format(super.getView(i, view, viewGroup), false);
            }

            @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
            public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                return format(super.getDropDownView(i, view, viewGroup), true);
            }
        };
    }
}
