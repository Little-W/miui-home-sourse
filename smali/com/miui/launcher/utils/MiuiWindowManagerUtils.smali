.class public Lcom/miui/launcher/utils/MiuiWindowManagerUtils;
.super Ljava/lang/Object;
.source "MiuiWindowManagerUtils.java"


# static fields
.field public static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field public static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field private static final SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000

.field public static final WINDOW_EXTRA_FLAG_DISABLE_FADE_ROTATION_ANIMATION:I = 0x10000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraFlag(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 28
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return-void
.end method

.method public static getInitialDisplaySize()Landroid/graphics/Point;
    .locals 3

    .line 34
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 35
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setExtraFlag(Landroid/view/Window;II)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setExtraFlags(II)V

    return-void
.end method
