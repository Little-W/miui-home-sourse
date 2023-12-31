.class Lcom/miui/home/launcher/Workspace$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->autoShowTransitionEffectDemo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field final synthetic val$finalScreen:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;I)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$5;->this$0:Lcom/miui/home/launcher/Workspace;

    iput p2, p0, Lcom/miui/home/launcher/Workspace$5;->val$finalScreen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1138
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$5;->this$0:Lcom/miui/home/launcher/Workspace;

    iget v1, p0, Lcom/miui/home/launcher/Workspace$5;->val$finalScreen:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    .line 1139
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$5;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->access$400(Lcom/miui/home/launcher/Workspace;)Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
