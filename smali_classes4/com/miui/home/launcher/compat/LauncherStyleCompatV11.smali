.class Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;
.super Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;
.source "LauncherStyleCompatV11.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLauncherDialogPaddingBottom()I
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070216

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getLauncherDialogPaddingTop()I
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getMiuiDialogCornerRadius(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getLauncherMenuItemMinHeight()I
    .locals 1

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070215

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getLauncherMenuItemTitleSize()I
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070219

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
