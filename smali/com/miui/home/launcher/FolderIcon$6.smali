.class Lcom/miui/home/launcher/FolderIcon$6;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V
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
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$currentIndex:I

.field final synthetic val$si:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;ILcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$6;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput p2, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$currentIndex:I

    iput-object p3, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$6;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$6;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$currentIndex:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$si:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object v0, p1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 332
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$6;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$currentIndex:I

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    instance-of p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$6;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$currentIndex:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 327
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon$6;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
