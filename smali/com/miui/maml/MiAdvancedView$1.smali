.class Lcom/miui/maml/MiAdvancedView$1;
.super Ljava/lang/Object;
.source "MiAdvancedView.java"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/MiAdvancedView;


# direct methods
.method constructor <init>(Lcom/miui/maml/MiAdvancedView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/maml/MiAdvancedView$1;->this$0:Lcom/miui/maml/MiAdvancedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverChange(Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView$1;->this$0:Lcom/miui/maml/MiAdvancedView;

    invoke-virtual {v0, p1}, Lcom/miui/maml/MiAdvancedView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView$1;->this$0:Lcom/miui/maml/MiAdvancedView;

    const v0, 0x8000

    invoke-virtual {p1, v0}, Lcom/miui/maml/MiAdvancedView;->sendAccessibilityEvent(I)V

    return-void
.end method
