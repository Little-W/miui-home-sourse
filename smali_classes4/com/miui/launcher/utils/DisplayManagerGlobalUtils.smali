.class public Lcom/miui/launcher/utils/DisplayManagerGlobalUtils;
.super Ljava/lang/Object;
.source "DisplayManagerGlobalUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotation()I
    .locals 2

    .line 13
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 15
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    return v0
.end method
