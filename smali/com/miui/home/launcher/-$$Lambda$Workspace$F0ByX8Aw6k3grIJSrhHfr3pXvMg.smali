.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$F0ByX8Aw6k3grIJSrhHfr3pXvMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$F0ByX8Aw6k3grIJSrhHfr3pXvMg;->f$0:Lcom/miui/home/launcher/Workspace;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$F0ByX8Aw6k3grIJSrhHfr3pXvMg;->f$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$resetCellScreenScale$100(Lcom/miui/home/launcher/Workspace;F)V

    return-void
.end method
