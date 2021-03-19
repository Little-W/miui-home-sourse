.class Lcom/miui/home/launcher/FolderIcon$6;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$currentIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;I)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$6;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput p2, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$currentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon$6;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$6;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$300(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/FolderIcon$6;->val$currentIndex:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
