.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$LHLCr5798S0ioKJC76RTu4nsKt8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$LHLCr5798S0ioKJC76RTu4nsKt8;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$LHLCr5798S0ioKJC76RTu4nsKt8;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetView(Landroid/view/View;)V

    return-void
.end method
