.class Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;
.super Lcom/miui/home/launcher/compat/LauncherStyleCompat;
.source "LauncherStyleCompatV10.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getLauncherDialogPaddingBottom()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getLauncherDialogPaddingTop()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getLauncherMenuItemMinHeight()I
    .locals 1

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070214

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getLauncherMenuItemTitleSize()I
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070218

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
