.class Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;
.super Ljava/lang/Object;
.source "BaseDelegateAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/BaseDelegateAdapter;->onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/BaseDelegateAdapter;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;->this$0:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    iput p2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;->this$0:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    invoke-static {p1}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->access$200(Lcom/miui/home/smallwindow/BaseDelegateAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;->this$0:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    .line 92
    invoke-static {v1}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->access$300(Lcom/miui/home/smallwindow/BaseDelegateAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;

    invoke-static {v1}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->access$400(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;->this$0:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    .line 93
    invoke-static {v2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->access$300(Lcom/miui/home/smallwindow/BaseDelegateAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;

    invoke-static {v2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;->access$500(Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->startFreeformActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
