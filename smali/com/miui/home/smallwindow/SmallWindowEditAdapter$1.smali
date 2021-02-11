.class Lcom/miui/home/smallwindow/SmallWindowEditAdapter$1;
.super Ljava/lang/Object;
.source "SmallWindowEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

.field final synthetic val$info:Lcom/miui/home/smallwindow/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowEditAdapter;Lcom/miui/home/smallwindow/ItemInfo;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter$1;->val$info:Lcom/miui/home/smallwindow/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    invoke-static {p1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->access$000(Lcom/miui/home/smallwindow/SmallWindowEditAdapter;)Lcom/miui/home/smallwindow/BadgeCheckedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter$1;->val$info:Lcom/miui/home/smallwindow/ItemInfo;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/home/smallwindow/BadgeCheckedListener;->onAppChecked(Lcom/miui/home/smallwindow/ItemInfo;Z)V

    return-void
.end method
