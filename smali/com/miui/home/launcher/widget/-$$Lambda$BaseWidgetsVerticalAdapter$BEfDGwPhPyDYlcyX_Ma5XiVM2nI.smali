.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$BEfDGwPhPyDYlcyX_Ma5XiVM2nI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$BEfDGwPhPyDYlcyX_Ma5XiVM2nI;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$BEfDGwPhPyDYlcyX_Ma5XiVM2nI;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    check-cast p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$setViewHolderAsync$5(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;)V

    return-void
.end method
