.class Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecommendShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->changeLoadingTitleToAdTitleWithAnim(Lcom/miui/home/launcher/ShortcutIcon;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

.field final synthetic val$newTitle:Ljava/lang/CharSequence;

.field final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;->val$title:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;->val$newTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;->val$title:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$2;->val$newTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
