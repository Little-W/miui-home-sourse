.class final Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;
.super Ljava/lang/Object;
.source "ChoreographerExt.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/tools/ChoreographerExt;->postCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;

    invoke-direct {v0}, Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;-><init>()V

    sput-object v0, Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    .line 40
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    invoke-static {v0, p1, p2}, Lcom/miui/performance/tools/ChoreographerExt;->access$setFrameTimeNanos$p(Lcom/miui/performance/tools/ChoreographerExt;J)V

    return-void
.end method
