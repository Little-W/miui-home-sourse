.class public Lmiui/home/lib/dialog/widget/SlidingButtonMiuix3;
.super Lmiuix/slidingwidget/widget/SlidingButton;
.source "SlidingButtonMiuix3.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lmiui/home/lib/dialog/widget/SlidingButtonMiuix3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 18
    sget v0, Lmiui/home/lib/dialog/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/home/lib/dialog/widget/SlidingButtonMiuix3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lmiui/home/lib/dialog/widget/SlidingButtonHelperMiuix3;

    invoke-direct {v0, p0}, Lmiui/home/lib/dialog/widget/SlidingButtonHelperMiuix3;-><init>(Landroid/widget/CompoundButton;)V

    .line 24
    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/SlidingButtonHelperMiuix3;->initDrawable()V

    .line 25
    invoke-virtual {v0}, Lmiui/home/lib/dialog/widget/SlidingButtonHelperMiuix3;->initAnim()V

    .line 26
    sget-object v1, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    sget v2, Lmiuix/slidingwidget/R$style;->Widget_SlidingButton_DayNight:I

    .line 27
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 29
    invoke-virtual {v0, p1, p2}, Lmiui/home/lib/dialog/widget/SlidingButtonHelperMiuix3;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 30
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    :try_start_0
    const-class p1, Lmiuix/slidingwidget/widget/SlidingButton;

    const-string p2, "mHelper"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-void
.end method
