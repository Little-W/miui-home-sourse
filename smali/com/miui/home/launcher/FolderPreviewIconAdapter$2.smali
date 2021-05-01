.class Lcom/miui/home/launcher/FolderPreviewIconAdapter$2;
.super Ljava/lang/Object;
.source "FolderPreviewIconAdapter.java"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderPreviewIconAdapter;->refresh(Ljava/util/ArrayList;)V
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
.field final synthetic this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$2;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

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

    .line 126
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$2;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$000(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$2;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->notifyDataSetChanged()V

    return-void
.end method
