.class Lcom/miui/home/launcher/Launcher$CheckedPrepairUserPersentAnimationOperation;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedPrepairUserPersentAnimationOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/Consumer<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 6252
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$CheckedPrepairUserPersentAnimationOperation;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 6252
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$CheckedPrepairUserPersentAnimationOperation;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6255
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6256
    invoke-static {}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->getInstance()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->getPrepareConsumer()Ljava8/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 6252
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$CheckedPrepairUserPersentAnimationOperation;->accept(Landroid/view/View;)V

    return-void
.end method
