.class public final synthetic Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$M6psCNdzV22x0zSj5eNlsqs0cpY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$M6psCNdzV22x0zSj5eNlsqs0cpY;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$M6psCNdzV22x0zSj5eNlsqs0cpY;->f$0:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->lambda$bindMamlWidgetRemoved$1(Ljava/util/List;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
