.class Lcom/miui/maml/component/MamlSurface$1;
.super Ljava/lang/Object;
.source "MamlSurface.java"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/component/MamlSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/component/MamlSurface;


# direct methods
.method constructor <init>(Lcom/miui/maml/component/MamlSurface;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    invoke-static {v0}, Lcom/miui/maml/component/MamlSurface;->access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    invoke-static {p0}, Lcom/miui/maml/component/MamlSurface;->access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;

    if-eqz p0, :cond_0

    .line 48
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
