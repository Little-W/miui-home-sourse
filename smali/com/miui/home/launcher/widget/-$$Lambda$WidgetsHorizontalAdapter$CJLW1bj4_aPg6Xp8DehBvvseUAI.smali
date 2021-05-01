.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput p3, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$2:I

    iput p4, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$3:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget v2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$2:I

    iget v3, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->lambda$onBindViewHolder$365(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;

    move-result-object v0

    return-object v0
.end method
