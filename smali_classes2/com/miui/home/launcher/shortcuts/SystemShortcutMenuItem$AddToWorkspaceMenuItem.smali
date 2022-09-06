.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddToWorkspaceMenuItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 202
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 203
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110035

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 214
    new-instance v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem$1;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 209
    instance-of p1, p1, Lcom/miui/home/launcher/PairShortcutInfo;

    return p1
.end method
