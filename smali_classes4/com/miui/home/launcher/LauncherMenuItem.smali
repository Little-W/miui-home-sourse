.class public Lcom/miui/home/launcher/LauncherMenuItem;
.super Landroid/widget/LinearLayout;
.source "LauncherMenuItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherMenuItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherMenuItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherMenuItemMinHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherMenuItem;->setMinimumHeight(I)V

    return-void
.end method
