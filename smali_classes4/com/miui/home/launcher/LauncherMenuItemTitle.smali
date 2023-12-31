.class public Lcom/miui/home/launcher/LauncherMenuItemTitle;
.super Landroid/widget/TextView;
.source "LauncherMenuItemTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherMenuItemTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherMenuItemTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherMenuItemTitleSize()I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/LauncherMenuItemTitle;->setTextSize(IF)V

    const-string p1, "mipro-medium"

    .line 26
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherMenuItemTitle;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
