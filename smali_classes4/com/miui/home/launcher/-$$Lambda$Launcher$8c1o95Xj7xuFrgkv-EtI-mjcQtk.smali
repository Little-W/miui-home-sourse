.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$8c1o95Xj7xuFrgkv-EtI-mjcQtk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$8c1o95Xj7xuFrgkv-EtI-mjcQtk;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$8c1o95Xj7xuFrgkv-EtI-mjcQtk;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$setupAnimations$15$Launcher(F)V

    return-void
.end method
