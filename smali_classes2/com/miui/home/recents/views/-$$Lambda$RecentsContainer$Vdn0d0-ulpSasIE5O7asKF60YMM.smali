.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$Vdn0d0-ulpSasIE5O7asKF60YMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$Vdn0d0-ulpSasIE5O7asKF60YMM;->f$0:Lcom/miui/home/recents/views/RecentsContainer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$Vdn0d0-ulpSasIE5O7asKF60YMM;->f$0:Lcom/miui/home/recents/views/RecentsContainer;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->lambda$updateSuggestionList$2(Lcom/miui/home/recents/views/RecentsContainer;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
