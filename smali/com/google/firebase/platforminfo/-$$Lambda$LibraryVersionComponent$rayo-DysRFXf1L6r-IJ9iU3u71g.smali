.class public final synthetic Lcom/google/firebase/platforminfo/-$$Lambda$LibraryVersionComponent$rayo-DysRFXf1L6r-IJ9iU3u71g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/platforminfo/-$$Lambda$LibraryVersionComponent$rayo-DysRFXf1L6r-IJ9iU3u71g;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/platforminfo/-$$Lambda$LibraryVersionComponent$rayo-DysRFXf1L6r-IJ9iU3u71g;->f$1:Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/platforminfo/-$$Lambda$LibraryVersionComponent$rayo-DysRFXf1L6r-IJ9iU3u71g;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/platforminfo/-$$Lambda$LibraryVersionComponent$rayo-DysRFXf1L6r-IJ9iU3u71g;->f$1:Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->lambda$fromContext$0(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/platforminfo/LibraryVersion;

    move-result-object p0

    return-object p0
.end method
