.class Lcom/squareup/picasso/Utils$PicassoThreadFactory;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PicassoThreadFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 343
    new-instance p0, Lcom/squareup/picasso/Utils$PicassoThread;

    invoke-direct {p0, p1}, Lcom/squareup/picasso/Utils$PicassoThread;-><init>(Ljava/lang/Runnable;)V

    return-object p0
.end method
