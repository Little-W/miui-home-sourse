.class public Lmiui/home/lib/dialog/widget/SlidingButtonHelperMiuix3;
.super Lmiuix/slidingwidget/widget/SlidingButtonHelper;
.source "SlidingButtonHelperMiuix3.java"


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    return-void
.end method


# virtual methods
.method public initAnim()V
    .locals 2

    .line 18
    invoke-super {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initAnim()V

    .line 20
    :try_start_0
    const-class v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    const-string v1, "mSliderPressedAnim"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/physics/SpringAnimation;

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p0

    const v0, 0x3f904189    # 1.127f

    invoke-virtual {p0, v0}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
