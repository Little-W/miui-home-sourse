.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$TimeOutBlocker$gVymVUHqUjspuNZmmpUvpxa8VhU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$TimeOutBlocker$gVymVUHqUjspuNZmmpUvpxa8VhU;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$TimeOutBlocker$gVymVUHqUjspuNZmmpUvpxa8VhU;->f$0:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/home/recents/util/TimeOutBlocker;->lambda$startCountDown$0(Ljava/lang/String;)V

    return-void
.end method
