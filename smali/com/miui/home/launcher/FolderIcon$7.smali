.class Lcom/miui/home/launcher/FolderIcon$7;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$finalIconIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;I)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput p2, p0, Lcom/miui/home/launcher/FolderIcon$7;->val$finalIconIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 347
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon$7;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public accept(Ljava/lang/Void;)V
    .locals 2

    .line 350
    iget p1, p0, Lcom/miui/home/launcher/FolderIcon$7;->val$finalIconIndex:I

    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v1, v0, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
