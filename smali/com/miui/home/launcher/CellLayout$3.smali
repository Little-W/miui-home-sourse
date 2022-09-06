.class Lcom/miui/home/launcher/CellLayout$3;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$3;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$3;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$3;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->deleteSelf()V

    :cond_0
    return-void
.end method
