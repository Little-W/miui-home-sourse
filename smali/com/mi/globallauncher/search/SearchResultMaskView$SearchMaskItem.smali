.class Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/search/SearchResultMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchMaskItem"
.end annotation


# instance fields
.field data:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

.field type:I


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskView;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;->type:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;->data:Ljava/lang/Object;

    return-void
.end method
