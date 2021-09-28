.class Lcom/miui/home/launcher/CellScreen$4;
.super Ljava/lang/Object;
.source "CellScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellScreen;

.field final synthetic val$isEditing:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellScreen;Z)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen$4;->this$0:Lcom/miui/home/launcher/CellScreen;

    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen$4;->val$isEditing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen$4;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/CellScreen;->access$200(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/CellScreen$4;->val$isEditing:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setEditMode(Z)V

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen$4;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method
