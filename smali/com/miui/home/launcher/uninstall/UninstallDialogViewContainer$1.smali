.class Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;
.super Ljava/lang/Object;
.source "UninstallDialogViewContainer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->bindShortcut(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->access$000(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;)Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    move-result-object v0

    const v1, 0x7f0d0027

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->access$100(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
