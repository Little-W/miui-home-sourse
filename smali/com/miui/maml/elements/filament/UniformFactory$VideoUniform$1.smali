.class Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;
.super Ljava/lang/Object;
.source "UniformFactory.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->setPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;->this$0:Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 674
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;->this$0:Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->access$100(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 675
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;->this$0:Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->access$200(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 676
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;->this$0:Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->access$200(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;->this$0:Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->access$200(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->access$302(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;I)I

    .line 679
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform$1;->this$0:Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;->access$400(Lcom/miui/maml/elements/filament/UniformFactory$VideoUniform;)V

    :goto_0
    return-void
.end method
