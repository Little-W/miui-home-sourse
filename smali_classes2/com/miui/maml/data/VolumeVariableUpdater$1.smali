.class Lcom/miui/maml/data/VolumeVariableUpdater$1;
.super Ljava/lang/Object;
.source "VolumeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/VolumeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/VolumeVariableUpdater;


# direct methods
.method constructor <init>(Lcom/miui/maml/data/VolumeVariableUpdater;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/maml/data/VolumeVariableUpdater$1;->this$0:Lcom/miui/maml/data/VolumeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/miui/maml/data/VolumeVariableUpdater$1;->this$0:Lcom/miui/maml/data/VolumeVariableUpdater;

    invoke-static {v0}, Lcom/miui/maml/data/VolumeVariableUpdater;->access$000(Lcom/miui/maml/data/VolumeVariableUpdater;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method
