.class Lcom/miui/home/launcher/LauncherMenu$9;
.super Landroid/view/View$AccessibilityDelegate;
.source "LauncherMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$9;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    const v0, 0x8000

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance p2, Lcom/miui/home/launcher/LauncherMenu$9$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/LauncherMenu$9$1;-><init>(Lcom/miui/home/launcher/LauncherMenu$9;Landroid/view/View;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    :goto_0
    return-void
.end method
