.class public final synthetic Lcom/google/firebase/-$$Lambda$FirebaseApp$g2HBDSvWXpy9ytXuN68VN_QnBHQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field private final synthetic f$0:Lcom/google/firebase/FirebaseApp;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/-$$Lambda$FirebaseApp$g2HBDSvWXpy9ytXuN68VN_QnBHQ;->f$0:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/-$$Lambda$FirebaseApp$g2HBDSvWXpy9ytXuN68VN_QnBHQ;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/-$$Lambda$FirebaseApp$g2HBDSvWXpy9ytXuN68VN_QnBHQ;->f$0:Lcom/google/firebase/FirebaseApp;

    iget-object p0, p0, Lcom/google/firebase/-$$Lambda$FirebaseApp$g2HBDSvWXpy9ytXuN68VN_QnBHQ;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/google/firebase/FirebaseApp;->lambda$new$0$FirebaseApp(Landroid/content/Context;)Lcom/google/firebase/internal/DataCollectionConfigStorage;

    move-result-object p0

    return-object p0
.end method
