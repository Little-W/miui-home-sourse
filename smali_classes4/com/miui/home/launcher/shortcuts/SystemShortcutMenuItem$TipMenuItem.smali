.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipMenuItem"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 251
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 252
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
