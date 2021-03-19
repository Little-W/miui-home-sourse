.class Lcom/miui/maml/util/ConfigFile$3;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/util/ConfigFile;


# direct methods
.method constructor <init>(Lcom/miui/maml/util/ConfigFile;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$3;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$3;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->putTask(Lcom/miui/maml/util/Task;)V

    return-void
.end method
