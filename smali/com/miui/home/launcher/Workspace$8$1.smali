.class Lcom/miui/home/launcher/Workspace$8$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/Consumer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Workspace$8;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace$8;)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$8$1;->this$1:Lcom/miui/home/launcher/Workspace$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1780
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace$8$1;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public accept(Ljava/lang/Void;)V
    .locals 0

    .line 1783
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$8$1;->this$1:Lcom/miui/home/launcher/Workspace$8;

    iget-object p1, p1, Lcom/miui/home/launcher/Workspace$8;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    return-void
.end method
