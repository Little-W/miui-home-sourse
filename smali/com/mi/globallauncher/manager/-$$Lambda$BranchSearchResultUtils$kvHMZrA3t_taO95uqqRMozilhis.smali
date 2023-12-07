.class public final synthetic Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Lio/branch/search/BranchLinkResult;

.field private final synthetic f$2:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lio/branch/search/BranchLinkResult;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;->f$1:Lio/branch/search/BranchLinkResult;

    iput-object p3, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;->f$2:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;->f$1:Lio/branch/search/BranchLinkResult;

    iget-object p0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;->f$2:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p0, p1}, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->lambda$setupBranchItemView$0(Landroid/view/View;Lio/branch/search/BranchLinkResult;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
