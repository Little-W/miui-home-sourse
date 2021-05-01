.class public final synthetic Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field private final synthetic f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;->f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;->f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;->f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iget-object v1, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;->f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->lambda$scheduleCallbackTask$327(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method
