.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;->f$1:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$onBindViewHolder$2$BaseWidgetsVerticalAdapter(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method
