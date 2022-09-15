.class Lcom/miui/home/launcher/anim/NormalEditEnterAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NormalEditEnterAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->normalEnterEditAnimStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$2;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$2;->this$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->onEnterAnimationEnd()V

    return-void
.end method
