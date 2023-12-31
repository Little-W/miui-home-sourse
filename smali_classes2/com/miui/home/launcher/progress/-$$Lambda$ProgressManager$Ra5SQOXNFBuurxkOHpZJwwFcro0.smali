.class public final synthetic Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$Ra5SQOXNFBuurxkOHpZJwwFcro0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/progress/ProgressManager;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ProgressManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$Ra5SQOXNFBuurxkOHpZJwwFcro0;->f$0:Lcom/miui/home/launcher/progress/ProgressManager;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$Ra5SQOXNFBuurxkOHpZJwwFcro0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$Ra5SQOXNFBuurxkOHpZJwwFcro0;->f$0:Lcom/miui/home/launcher/progress/ProgressManager;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$Ra5SQOXNFBuurxkOHpZJwwFcro0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->lambda$onAppInProgressInstalled$2$ProgressManager(Ljava/lang/String;)V

    return-void
.end method
