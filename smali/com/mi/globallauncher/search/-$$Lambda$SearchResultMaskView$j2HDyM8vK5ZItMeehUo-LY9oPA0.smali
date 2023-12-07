.class public final synthetic Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$j2HDyM8vK5ZItMeehUo-LY9oPA0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$j2HDyM8vK5ZItMeehUo-LY9oPA0;->f$0:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onNoItemClicked()V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$j2HDyM8vK5ZItMeehUo-LY9oPA0;->f$0:Landroid/view/View$OnClickListener;

    invoke-static {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;)V

    return-void
.end method
