.class Lcom/miui/home/launcher/FolderGridView$4;
.super Ljava/lang/Object;
.source "FolderGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderGridView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$4;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$4;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderGridView;->access$200(Lcom/miui/home/launcher/FolderGridView;)V

    return-void
.end method
