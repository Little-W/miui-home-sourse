.class Lcom/miui/maml/elements/MusicController$1;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicController;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicController;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController$1;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$1;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicController;->access$000(Lcom/miui/maml/elements/MusicController;Ljava/util/List;)V

    const-string p1, "MAML_MusicController"

    const-string v0, "onActiveSessionsChanged"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
