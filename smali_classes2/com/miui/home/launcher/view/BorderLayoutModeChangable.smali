.class public Lcom/miui/home/launcher/view/BorderLayoutModeChangable;
.super Lmiuix/visual/check/BorderLayout;
.source "BorderLayoutModeChangable.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/BorderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public resetBackGroundForDarkModeChange(IZ)V
    .locals 6

    .line 23
    const-class v0, Lmiuix/visual/check/BorderLayout;

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "mBackGround"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    const-class v1, Lmiuix/visual/check/BorderLayout;

    const-class v2, Lmiuix/visual/check/BorderLayout$DrawableTarget;

    const-string v3, "mDrawableTarget"

    invoke-static {v1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 27
    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    const-class v0, Lmiuix/visual/check/BorderLayout$DrawableTarget;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/view/BorderLayoutModeChangable;->onChecked(Z)V

    return-void
.end method
