.class public Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;
.super Ljava/lang/Object;
.source "MIUIWidgetLayoutFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetLayoutFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Button"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "AnalogClock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "CheckBox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "ListView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "FrameLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "AdapterViewFlipper"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "LinearLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "ImageView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "TextClock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "ViewFlipper"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "RadioButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_b
    const-string v0, "GridView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_c
    const-string v0, "RelativeLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_d
    const-string v0, "StackView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_e
    const-string v0, "ImageButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_f
    const-string v0, "TextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_10
    const-string v0, "Chronometer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_11
    const-string v0, "ProgressBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_12
    const-string v0, "Switch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_13
    const-string v0, "GridLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    goto/16 :goto_2

    .line 121
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetViewFlipper;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 117
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetTextView;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 113
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetTextClock;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 109
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetSwitch;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 105
    :pswitch_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetStackView;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 101
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetRelativeLayout;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 97
    :pswitch_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetRadioButton;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 93
    :pswitch_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetProgressBar;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 89
    :pswitch_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetListView;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 85
    :pswitch_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetLinearLayout;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 81
    :pswitch_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetImageView;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 77
    :pswitch_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetImageButton;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 73
    :pswitch_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetGridView;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 69
    :pswitch_d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetGridLayout;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 65
    :pswitch_e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetFrameLayout;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 61
    :pswitch_f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetChronometer;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 57
    :pswitch_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetCheckBox;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 53
    :pswitch_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetButton;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 49
    :pswitch_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetAnalogClock;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 45
    :pswitch_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p2, Lcom/miui/miuiwidget/views/MIUIWidgetAdapterViewFlipper;

    invoke-direct {p2, p3, p4}, Lcom/miui/miuiwidget/views/MIUIWidgetAdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onPostCreateView(Landroid/view/View;Landroid/view/View;)V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c9dbdd0 -> :sswitch_13
        -0x6b9f5cac -> :sswitch_12
        -0x5924e17a -> :sswitch_11
        -0x3aac515a -> :sswitch_10
        -0x37f7066e -> :sswitch_f
        -0x37e04bb3 -> :sswitch_e
        -0x218ef2d3 -> :sswitch_d
        -0x1a719aca -> :sswitch_c
        0x16d08b2b -> :sswitch_b
        0x2e46a6ed -> :sswitch_a
        0x34daef0b -> :sswitch_9
        0x380bfac1 -> :sswitch_8
        0x431b5280 -> :sswitch_7
        0x43311acf -> :sswitch_6
        0x47d0307c -> :sswitch_5
        0x4e20b2d7 -> :sswitch_4
        0x54104483 -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x6a06c0de -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostCreateView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method
