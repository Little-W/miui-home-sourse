.class Lcom/miui/home/launcher/FolderIcon$5;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


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
        "Lio/reactivex2/functions/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$currentIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;I)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput p2, p0, Lcom/miui/home/launcher/FolderIcon$5;->val$currentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$300(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/FolderIcon$5;->val$currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon$5;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
