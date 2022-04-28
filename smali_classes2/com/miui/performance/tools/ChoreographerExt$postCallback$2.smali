.class final Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;
.super Ljava/lang/Object;
.source "ChoreographerExt.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/tools/ChoreographerExt;->postCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;

    invoke-direct {v0}, Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;-><init>()V

    sput-object v0, Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 42
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/performance/tools/ChoreographerExt;->access$doQueueEnd(Lcom/miui/performance/tools/ChoreographerExt;I)V

    .line 43
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/performance/tools/ChoreographerExt;->access$doQueueBegin(Lcom/miui/performance/tools/ChoreographerExt;I)V

    return-void
.end method
