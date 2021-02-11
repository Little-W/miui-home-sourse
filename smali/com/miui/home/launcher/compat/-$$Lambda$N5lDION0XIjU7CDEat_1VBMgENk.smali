.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$N5lDION0XIjU7CDEat_1VBMgENk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$N5lDION0XIjU7CDEat_1VBMgENk;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$N5lDION0XIjU7CDEat_1VBMgENk;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareUserPresentAnimation(Landroid/view/View;)V

    return-void
.end method
