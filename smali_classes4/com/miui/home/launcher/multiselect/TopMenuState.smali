.class public Lcom/miui/home/launcher/multiselect/TopMenuState;
.super Ljava/lang/Object;
.source "TopMenuState.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mStateName:Ljava/lang/String;

.field private mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mStateName:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    return-void
.end method


# virtual methods
.method public getImageAlphaForFolmeAnim()F
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getImageViewColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mStateName:Ljava/lang/String;

    return-object p0
.end method

.method public getTopMenuColor()Lcom/miui/home/launcher/multiselect/TopMenuColor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    return-object p0
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuState;->mTopMenuColor:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->onWallpaperColorChanged()V

    return-void
.end method
