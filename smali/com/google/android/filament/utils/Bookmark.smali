.class public Lcom/google/android/filament/utils/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.java"


# instance fields
.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/google/android/filament/utils/Bookmark;->mNativeObject:J

    return-void
.end method

.method private static native nDestroyBookmark(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    iget-wide v0, p0, Lcom/google/android/filament/utils/Bookmark;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Bookmark;->nDestroyBookmark(J)V

    .line 33
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getNativeObject()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/google/android/filament/utils/Bookmark;->mNativeObject:J

    return-wide v0
.end method
