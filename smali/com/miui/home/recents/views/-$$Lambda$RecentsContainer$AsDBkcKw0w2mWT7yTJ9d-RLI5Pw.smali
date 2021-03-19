.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$AsDBkcKw0w2mWT7yTJ9d-RLI5Pw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$AsDBkcKw0w2mWT7yTJ9d-RLI5Pw;->f$0:Lcom/miui/home/recents/views/RecentsContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$AsDBkcKw0w2mWT7yTJ9d-RLI5Pw;->f$0:Lcom/miui/home/recents/views/RecentsContainer;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->lambda$updateSuggestionList$2(Lcom/miui/home/recents/views/RecentsContainer;Ljava/util/List;)V

    return-void
.end method
