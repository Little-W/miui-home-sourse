.class Lcom/miui/home/launcher/progress/ProgressInfoList$2;
.super Ljava/lang/Object;
.source "ProgressInfoList.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ProgressInfoList;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ProgressInfoList;Ljava/lang/Runnable;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$2;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList$2;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public accept(Ljava/lang/Void;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$2;->val$callback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
